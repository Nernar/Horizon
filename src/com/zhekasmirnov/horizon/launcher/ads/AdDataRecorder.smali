.class public Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;
.super Ljava/lang/Object;
.source "AdDataRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;
    }
.end annotation


# instance fields
.field public final manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

.field private final recordedAdData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->recordedAdData:Ljava/util/HashMap;

    .line 21
    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    return-void
.end method

.method private recordRatingAdd(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->recordedAdData:Ljava/util/HashMap;

    monitor-enter v2

    .line 38
    :try_start_3
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->recordedAdData:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->providerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;

    .line 39
    if-nez v0, :cond_4c

    .line 40
    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;

    invoke-direct {v0, p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;)V

    .line 41
    invoke-static {v0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;->access$S1000002(Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)V

    .line 42
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->recordedAdData:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->providerId:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 44
    :goto_1f
    invoke-static {v1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;->access$L1000001(Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 45
    if-eqz v0, :cond_3d

    .line 46
    invoke-static {v1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;->access$L1000001(Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_49

    .line 48
    :goto_3b
    monitor-exit v2

    return-void

    :cond_3d
    :try_start_3d
    invoke-static {v1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;->access$L1000001(Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_49

    goto :goto_3b

    :catchall_49
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4c
    move-object v1, v0

    goto :goto_1f
.end method


# virtual methods
.method public createWinningDataDomainSource()Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->newHardcodedMainDomain()Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    move-result-object v0

    return-object v0
.end method

.method public readDataFromJson(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->recordedAdData:Ljava/util/HashMap;

    monitor-enter v1

    .line 26
    :try_start_3
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->recordedAdData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public record(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    if-eqz p1, :cond_14

    iget-object v0, p1, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->providerId:Ljava/lang/String;

    iget-object v1, p2, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->providerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->recordRatingAdd(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;Ljava/lang/String;I)V

    .line 56
    const/4 v0, -0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->recordRatingAdd(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;Ljava/lang/String;I)V

    :cond_14
    return-void
.end method

.method public recordInvalidRequest(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    if-eqz p1, :cond_19

    .line 62
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->recordedAdData:Ljava/util/HashMap;

    monitor-enter v1

    .line 63
    :try_start_5
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->recordedAdData:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->providerId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;

    .line 64
    if-eqz v0, :cond_18

    .line 65
    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;->access$L1000001(Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v1

    :cond_19
    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public writeDataToJson()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 31
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;->recordedAdData:Ljava/util/HashMap;

    monitor-enter v1

    .line 32
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
