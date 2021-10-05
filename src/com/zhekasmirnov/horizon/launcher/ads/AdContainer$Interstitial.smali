.class public Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Interstitial;
.super Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;
.source "AdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x29
    name = "Interstitial"
.end annotation


# direct methods
.method public constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    const-string v0, "interstitial"

    return-object v0
.end method

.method public inflate(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    .prologue
    .line 143
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method protected loadAd(Lcom/google/android/gms/ads/AdListener;Lcom/google/android/gms/ads/AdRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/AdListener;",
            "Lcom/google/android/gms/ads/AdRequest;",
            ")V"
        }
    .end annotation

    return-void
.end method
