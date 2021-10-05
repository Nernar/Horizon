.class public Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;
.super Ljava/lang/Object;
.source "AdDistributionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$DomainFactory;,
        Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;
    }
.end annotation


# instance fields
.field public final manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

.field private final root:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;


# direct methods
.method public constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;)V
    .registers 8

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    .line 17
    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    const/4 v2, 0x0

    check-cast v2, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    const-string v3, "root"

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;Ljava/lang/String;D)V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->root:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    return-void
.end method

.method constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    .line 22
    iput-object p2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->root:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    return-void
.end method


# virtual methods
.method public addDistributionNode(Ljava/lang/String;DLjava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;
    .registers 11

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->searchAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_36

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "parent node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_82

    .line 55
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    .line 56
    invoke-static {v2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->access$L1000004(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    move-result-object v0

    if-nez v0, :cond_56

    .line 57
    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    move-object v1, p0

    move-object v3, p4

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;Ljava/lang/String;D)V

    .line 58
    invoke-virtual {v2, v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->addChild(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;)V

    .line 59
    return-object v0

    .line 61
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is already containing ad domain, so it cannot be used as parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "parent node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is defined more than once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addDistributionNodeFromConfig(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$DomainFactory;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;
    .registers 9

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->addDistributionNode(Ljava/lang/String;DLjava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    move-result-object v1

    .line 69
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->domainByDistributionNodeName:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    .line 70
    if-nez v0, :cond_1e

    invoke-interface {p6}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$DomainFactory;->newDomain()Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 73
    :cond_1e
    invoke-virtual {v1, v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->setDomain(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)V

    .line 74
    return-object v1
.end method

.method public getNodeDistributionModel(Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;
    .registers 6

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->searchAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_36

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_4c

    .line 91
    new-instance v1, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    invoke-direct {v1, v2, v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;)V

    return-object v1

    .line 93
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is defined more than once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getRandomAdDomain([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;
    .registers 3

    .prologue
    .line 36
    if-eqz p1, :cond_5

    array-length v0, p1

    if-gtz v0, :cond_c

    .line 37
    :cond_5
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->root:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->access$1000010(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    move-result-object v0

    .line 43
    :goto_b
    return-object v0

    .line 39
    :cond_c
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->root:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    invoke-static {v0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->access$1000014(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;[Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_19

    .line 41
    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->access$1000010(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    move-result-object v0

    goto :goto_b

    .line 43
    :cond_19
    const/4 v0, 0x0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    goto :goto_b
.end method

.method public getRootName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->root:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->access$L1000005(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeight(Ljava/lang/String;D)D
    .registers 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->manager:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->configuration:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;->weightByDistributionNodeName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 79
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    :cond_12
    return-wide p2
.end method

.method public removeDistributionNodes(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->root:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    invoke-static {v0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->access$1000013(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;Ljava/lang/String;)V

    return-void
.end method

.method public search(Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->root:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    invoke-static {v0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->access$1000011(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    move-result-object v0

    return-object v0
.end method

.method public searchAll(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->root:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    invoke-static {v1, p1, v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->access$1000012(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;Ljava/lang/String;Ljava/util/List;)V

    .line 28
    return-object v0
.end method
