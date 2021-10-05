.class public Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;
.super Ljava/lang/Object;
.source "AdsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;,
        Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000000;,
        Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;,
        Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$ConcurrentAdStatus;
    }
.end annotation


# static fields
.field private static instance:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

.field public static final isTestMode:Z


# instance fields
.field private final adDataRecorder:Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;

.field public final configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

.field private currentDomain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

.field private final distributionModel:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

.field private isAdMobInitialized:Z

.field private recordedDataLockUUID:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    invoke-direct {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;-><init>()V

    sput-object v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->instance:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;

    invoke-direct {v0, p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;)V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->adDataRecorder:Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;

    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    invoke-direct {v0, p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;)V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    move-object v0, v1

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->currentDomain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

    invoke-direct {v0, p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;)V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->distributionModel:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->isAdMobInitialized:Z

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->recordedDataLockUUID:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->distributionModel:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

    .line 42
    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->getRootName()Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    const-string v4, "horizon-dev"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->addDistributionNode(Ljava/lang/String;DLjava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->newHardcodedMainDomain()Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->setDomain(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)V

    return-void
.end method

.method static synthetic access$1000010(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->onRequestFulfilled(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000011(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->onRequestFailed(Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->instance:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    return-object v0
.end method

.method private declared-synchronized initializeAdMobIfRequired()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->currentDomain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->isAdMobInitialized:Z

    if-nez v0, :cond_c

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->isAdMobInitialized:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    .line 35
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 65
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 67
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const/4 v0, 0x0

    move v1, v0

    .line 74
    :goto_18
    array-length v0, v2

    if-lt v1, v0, :cond_20

    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_1f
    return-object v0

    .line 69
    :cond_20
    aget-byte v0, v2, v1

    .line 70
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_36

    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    .line 72
    :cond_36
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_48} :catch_4a

    move-result-object v0

    goto :goto_28

    .line 76
    :catch_4a
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 79
    const-string v0, ""

    goto :goto_1f
.end method

.method private varargs onRequestFailed(Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    return-void

    .line 159
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 160
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    .line 161
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->adDataRecorder:Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->distributionModel:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

    invoke-virtual {v1, p3}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->getRandomAdDomain([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    move-result-object v1

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->currentDomain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    invoke-virtual {v0, v1, v2, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->record(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->flushRecordedData()V

    goto :goto_10
.end method

.method private varargs onRequestFulfilled(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->adDataRecorder:Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->distributionModel:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

    invoke-virtual {v1, p3}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->getRandomAdDomain([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    move-result-object v1

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->currentDomain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    invoke-virtual {p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->getAdType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->record(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->flushRecordedData()V

    return-void
.end method


# virtual methods
.method public addDistributionNode(Ljava/lang/String;Ljava/lang/String;D)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;
    .registers 6

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->distributionModel:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->addDistributionNode(Ljava/lang/String;DLjava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    move-result-object v0

    return-object v0
.end method

.method public varargs awaitAndLoadAds(II[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->initializeAdMobIfRequired()V

    return-void
.end method

.method public varargs awaitAndLoadAds(I[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    iget-wide v0, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->maxLoadWaitingTime:D

    const-wide v2, 0x408f400000000000L  # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->awaitAndLoadAds(II[Ljava/lang/String;)V

    return-void
.end method

.method public buildAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .registers 2
    .annotation runtime Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method public closeAllRequests()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->currentDomain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    .line 215
    if-eqz v0, :cond_7

    .line 216
    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->closeAllRequests()V

    :cond_7
    return-void
.end method

.method public closeInterstitialAds()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized flushRecordedData()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public getContext()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 46
    invoke-static {}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getTopRunningActivity()Landroid/app/Activity;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_6
.end method

.method public getDesiredAdDensity()D
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    iget-wide v0, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->desiredPackAdDensity:D

    return-wide v0
.end method

.method public getDesiredAdDuration()D
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    iget-wide v0, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->desiredPackAdDuration:D

    return-wide v0
.end method

.method public getDesiredAdditionalBannerChance()D
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    iget-wide v0, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->desiredAdditionalBannerChance:D

    return-wide v0
.end method

.method public getDesiredHorizonAdDensity()D
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    iget-wide v0, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->desiredHorizonAdDensity:D

    return-wide v0
.end method

.method public getDistributionModel()Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->distributionModel:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

    return-object v0
.end method

.method public getInitializationTask()Lcom/zhekasmirnov/horizon/runtime/task/Task;
    .registers 2

    .prologue
    .line 84
    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000000;

    invoke-direct {v0, p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000000;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;)V

    return-object v0
.end method

.method public varargs loadAd(Ljava/lang/String;ILcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;[Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;
    .registers 8

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->initializeAdMobIfRequired()V

    .line 170
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->currentDomain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    .line 171
    if-nez v1, :cond_b

    .line 172
    const/4 v0, 0x0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;

    .line 186
    :cond_a
    :goto_a
    return-object v0

    .line 174
    :cond_b
    if-nez p2, :cond_1d

    const/4 v0, 0x0

    :goto_e
    new-instance v2, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;

    invoke-direct {v2, p0, p3, p4, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->requireAsync(Ljava/lang/String;ZLcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;

    move-result-object v0

    .line 183
    if-lez p2, :cond_a

    .line 184
    invoke-virtual {v0, p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->setFancyTimeout(I)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;

    goto :goto_a

    .line 174
    :cond_1d
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public varargs loadConcurrentAd([Ljava/lang/String;IZLcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->initializeAdMobIfRequired()V

    return-void
.end method

.method public newHardcodedMainDomain()Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->domainByDistributionNodeName:Ljava/util/HashMap;

    const-string v1, "horizon-dev"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    .line 52
    if-eqz v0, :cond_f

    .line 55
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    const-string v1, "ca-app-pub-3152642364854897~5577139781"

    invoke-direct {v0, p0, v1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public registerAdDomain(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;Ljava/lang/String;Ljava/util/HashMap;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 140
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 144
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_47

    .line 145
    const/4 v0, 0x0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    .line 150
    :goto_1e
    return-object v0

    .line 136
    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 138
    if-eqz v1, :cond_f

    .line 139
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 140
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 139
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    invoke-static {p0, v0, v1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->newContainer(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 147
    :cond_47
    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    invoke-direct {v0, p0, p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, v2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->addContainers(Ljava/util/Collection;)V

    .line 149
    invoke-virtual {p1, v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->setDomain(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)V

    goto :goto_1e
.end method

.method public runAdditionalBannerRandom()Z
    .registers 5

    .prologue
    .line 123
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    iget-wide v2, v2, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->desiredAdditionalBannerChance:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public runDesiredDensityRandom()Z
    .registers 5

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    iget-wide v2, v2, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->desiredPackAdDensity:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public runDesiredHorizonDensityRandom()Z
    .registers 5

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    iget-wide v2, v2, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->desiredPackAdDensity:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public runInitialization()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method
