.class public Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$InterstitialVideo;
.super Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Interstitial;
.source "AdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x29
    name = "InterstitialVideo"
.end annotation


# direct methods
.method public constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Interstitial;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    const-string v0, "interstitial_video"

    return-object v0
.end method
