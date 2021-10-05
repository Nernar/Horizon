.class public Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;
.super Ljava/lang/Object;
.source "AdGlobalConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration$PendingInterrupt;
    }
.end annotation


# static fields
.field private static final READ_TIME_OUT:I = 0x1d4c


# instance fields
.field public final adTypeRatingWeights:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public dataLockUUID:Ljava/lang/String;

.field public desiredAdditionalBannerChance:D

.field public desiredHorizonAdDensity:D

.field public desiredPackAdDensity:D

.field public desiredPackAdDuration:D

.field public final domainByDistributionNodeName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;",
            ">;"
        }
    .end annotation
.end field

.field public isAudioAllowed:Z

.field public lowerRatingProbabilityFactor:D

.field public lowerRatingThreshold:D

.field public final manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

.field public maxLoadWaitingTime:D

.field public maxLoadingAttemptsByType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public trustedAdDomainChance:D

.field public final trustedAdDomains:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;",
            ">;"
        }
    .end annotation
.end field

.field public final weightByDistributionNodeName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->adTypeRatingWeights:Ljava/util/HashMap;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->dataLockUUID:Ljava/lang/String;

    iput-wide v4, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->desiredAdditionalBannerChance:D

    iput-wide v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->desiredHorizonAdDensity:D

    iput-wide v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->desiredPackAdDensity:D

    const-wide/high16 v0, 0x4024000000000000L  # 10.0

    iput-wide v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->desiredPackAdDuration:D

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->domainByDistributionNodeName:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->isAudioAllowed:Z

    iput-wide v4, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->lowerRatingProbabilityFactor:D

    const-wide/high16 v0, 0x4034000000000000L  # 20.0

    iput-wide v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->lowerRatingThreshold:D

    const-wide/high16 v0, 0x3ff4000000000000L  # 1.25

    iput-wide v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->maxLoadWaitingTime:D

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->maxLoadingAttemptsByType:Ljava/util/HashMap;

    iput-wide v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->trustedAdDomainChance:D

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->trustedAdDomains:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->weightByDistributionNodeName:Ljava/util/HashMap;

    .line 26
    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    return-void
.end method


# virtual methods
.method public getAdTypeMaxAttempts(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->maxLoadingAttemptsByType:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 56
    if-eqz v0, :cond_f

    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x2

    goto :goto_e
.end method

.method public getAdTypeRatingWeight(Ljava/lang/String;)D
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->adTypeRatingWeights:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 48
    if-eqz v0, :cond_f

    .line 49
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 51
    :goto_e
    return-wide v0

    :cond_f
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    goto :goto_e
.end method

.method public readJson(Lorg/json/JSONObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public readUrl(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method
