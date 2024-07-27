resource "spotify_playlist" "Terraform_Playlist01" {
  name        = "Terraform_Playlist01"
  description = "This playlist was created by Terraform"
  tracks      = ["3hRV0jL3vUpRrcy398teAU"]
}

data "spotify_search_track" "Lana"{
    artist = "Lana Del Rey"
}

resource "spotify_playlist" "Terraform_Playlist02" {
  name        = "Terraform_Playlist02"
  description = "This playlist was created by Terraform"
  tracks      = [data.spotify_search_track.Lana.tracks[0].id,
  data.spotify_search_track.Lana.tracks[1].id,
  data.spotify_search_track.Lana.tracks[2].id
  ]
}
