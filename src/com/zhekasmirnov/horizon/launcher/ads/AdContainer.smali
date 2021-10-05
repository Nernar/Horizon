.class public abstract Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;
.super Ljava/lang/Object;
.source "AdContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Listener;,
        Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;,
        Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Stub;,
        Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Interstitial;,
        Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$InterstitialVideo;,
        Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Native;,
        Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Banner;
    }
.end annotation


# static fields
.field public static final ID_ADVERTISER:I = 0x10006

.field public static final ID_AD_CHOICES:I = 0x10007

.field public static final ID_AD_VIEW:I = 0xffff

.field public static final ID_BODY:I = 0x10000

.field public static final ID_CALL_TO_ACTION:I = 0x1000a

.field public static final ID_CLICK_CONFIRMING:I = 0x1000b

.field public static final ID_HEADING:I = 0x10001

.field public static final ID_ICON:I = 0x10004

.field public static final ID_IMAGE:I = 0x10003

.field public static final ID_MEDIA:I = 0x10002

.field private static final ID_OFFSET:I = 0xffff

.field public static final ID_PRICING:I = 0x10005

.field public static final ID_STAR_RATING:I = 0x10009

.field public static final ID_STORE:I = 0x10008

.field public static final TYPE_BANNER:Ljava/lang/String; = "banner"

.field public static final TYPE_INTERSTITIAL:Ljava/lang/String; = "interstitial"

.field public static final TYPE_INTERSTITIAL_VIDEO:Ljava/lang/String; = "interstitial_video"

.field public static final TYPE_NATIVE:Ljava/lang/String; = "native"


# instance fields
.field public final adUnitId:Ljava/lang/String;

.field private failReason:I

.field public final manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

.field public remainingLoadingAttempts:I

.field private state:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

.field public useCount:I


# direct methods
.method public constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->failReason:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->remainingLoadingAttempts:I

    sget-object v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->INITIALIZED:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->state:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->useCount:I

    .line 52
    iput-object p2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->adUnitId:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    return-void
.end method

.method private load0(Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Listener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->LOADED:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->state:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    return-void
.end method

.method public static newContainer(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;
    .registers 6

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->getContext()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_c

    .line 76
    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Stub;

    invoke-direct {v0, p0, p2, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Stub;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_b
    return-object v0

    .line 78
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 79
    const v1, -0x533a80d4

    if-eq v0, v1, :cond_4e

    .line 80
    const v1, -0x3ebdafe9

    if-eq v0, v1, :cond_40

    .line 81
    const v1, 0x1200cda8

    if-eq v0, v1, :cond_32

    .line 82
    const v1, 0x240b672c

    if-ne v0, v1, :cond_5c

    const-string v0, "interstitial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 83
    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Interstitial;

    invoke-direct {v0, p0, p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Interstitial;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;)V

    goto :goto_b

    .line 85
    :cond_32
    const-string v0, "interstitial_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 86
    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$InterstitialVideo;

    invoke-direct {v0, p0, p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$InterstitialVideo;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;)V

    goto :goto_b

    .line 88
    :cond_40
    const-string v0, "native"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 89
    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Native;

    invoke-direct {v0, p0, p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Native;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;)V

    goto :goto_b

    .line 91
    :cond_4e
    const-string v0, "banner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 92
    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Banner;

    invoke-direct {v0, p0, p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Banner;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;)V

    goto :goto_b

    .line 94
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid ad container type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getAdType()Ljava/lang/String;
.end method

.method public getFailReason()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->failReason:I

    return v0
.end method

.method public getState()Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->state:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    return-object v0
.end method

.method public abstract inflate(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public load(Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Listener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->LOADING:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->state:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    .line 70
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    invoke-virtual {p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->getAdType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->getAdTypeMaxAttempts(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->remainingLoadingAttempts:I

    .line 71
    invoke-direct {p0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->load0(Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Listener;)V

    return-void
.end method

.method protected abstract loadAd(Lcom/google/android/gms/ads/AdListener;Lcom/google/android/gms/ads/AdRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/AdListener;",
            "Lcom/google/android/gms/ads/AdRequest;",
            ")V"
        }
    .end annotation
.end method
