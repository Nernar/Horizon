.class public Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;
.super Ljava/lang/Object;
.source "AdDomain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;,
        Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;
    }
.end annotation


# instance fields
.field private final asyncAdRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final containers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

.field public final providerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->asyncAdRequests:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->containers:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    .line 19
    iput-object p2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->providerId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->asyncAdRequests:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->containers:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    .line 24
    const-string v0, "provider"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->providerId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$L1000000(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->asyncAdRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->asyncAdRequests:Ljava/util/List;

    return-void
.end method

.method private static listToString([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_6
    array-length v2, p0

    if-lt v0, v2, :cond_e

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_e
    aget-object v2, p0, v0

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private onAdContainerLoaded(Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->asyncAdRequests:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 159
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 160
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;

    invoke-virtual {p0, v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->tryToFulfillRequest(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;)V

    goto :goto_b
.end method


# virtual methods
.method public addContainers(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->containers:Ljava/util/List;

    monitor-enter v1

    .line 33
    :try_start_3
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->containers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public varargs awaitLoadingOfAds(IILjava/util/List;[Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public varargs beginAdLoading([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->containers:Ljava/util/List;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public closeAllRequests()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->asyncAdRequests:Ljava/util/List;

    monitor-enter v1

    .line 190
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->asyncAdRequests:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 191
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_20

    move-result v0

    if-nez v0, :cond_16

    monitor-exit v1

    return-void

    .line 192
    :cond_16
    :try_start_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;

    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->close()V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_20

    goto :goto_e

    .line 191
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAllContainersWithStatesAndTypes([Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;[Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->containers:Ljava/util/List;

    monitor-enter v1

    .line 47
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getContainers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->containers:Ljava/util/List;

    return-object v0
.end method

.method public varargs getLoadedCount([Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    const/4 v1, 0x0

    sget-object v2, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->LOADED:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->getAllContainersWithStatesAndTypes([Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public varargs getLoadingCount([Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    const/4 v1, 0x0

    sget-object v2, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->LOADING:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->getAllContainersWithStatesAndTypes([Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAdContainerFailedToLoad(Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->asyncAdRequests:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 167
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;

    invoke-virtual {p0, v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->tryToFulfillRequest(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;)V

    goto :goto_b
.end method

.method public require(Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-array v0, v3, [Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    sget-object v1, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->LOADED:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    aput-object v1, v0, v2

    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->getAllContainersWithStatesAndTypes([Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1d

    .line 75
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;

    .line 77
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;

    goto :goto_1c
.end method

.method public requireAsync(Ljava/lang/String;ZLcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;
    .registers 6

    .prologue
    .line 182
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->beginAdLoading([Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;Ljava/lang/String;ZLcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->tryToFulfillRequest(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;)V

    .line 185
    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public tryToFulfillRequest(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public useContainer(Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->containers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 175
    iget v0, p1, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->useCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;->useCount:I

    .line 176
    return-void

    .line 178
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "passed container from another domain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
