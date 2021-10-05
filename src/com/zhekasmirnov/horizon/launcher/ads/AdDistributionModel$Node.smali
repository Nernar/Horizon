.class public Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;
.super Ljava/lang/Object;
.source "AdDistributionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "Node"
.end annotation


# instance fields
.field private childWeight:D

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;",
            ">;"
        }
    .end annotation
.end field

.field private domain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

.field private final name:Ljava/lang/String;

.field private parent:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

.field private final this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

.field private final weight:D


# direct methods
.method constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;Ljava/lang/String;D)V
    .registers 8

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

    .line 107
    const/4 v0, 0x0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->domain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->children:Ljava/util/List;

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->childWeight:D

    .line 110
    iput-object p2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->parent:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    .line 111
    iput-object p3, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->name:Ljava/lang/String;

    .line 112
    iput-wide p4, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->weight:D

    return-void
.end method

.method static access$0(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

    return-object v0
.end method

.method static synthetic access$1000010(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;
    .registers 2

    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->getDomainFromTreeRoot()Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000011(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;
    .registers 3

    invoke-direct {p0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->search(Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000012(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->searchAll(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1000013(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->removeNodes(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000014(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;[Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;
    .registers 3

    invoke-direct {p0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->buildFilteredTree([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$L1000004(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->domain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    return-object v0
.end method

.method static synthetic access$L1000005(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000004(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)V
    .registers 2

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->domain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    return-void
.end method

.method private varargs buildFilteredTree([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_2
    array-length v1, p1

    if-lt v0, v1, :cond_22

    .line 196
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 197
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->children:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 200
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_31

    .line 203
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_41

    move-object v0, v2

    .line 204
    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    .line 210
    :cond_21
    :goto_21
    return-object v0

    .line 191
    :cond_22
    aget-object v1, p1, v0

    .line 192
    iget-object v3, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    move-object v0, p0

    .line 193
    goto :goto_21

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 197
    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    .line 198
    invoke-direct {v0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->buildFilteredTree([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_12

    .line 200
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 206
    :cond_41
    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

    check-cast v2, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->weight:D

    invoke-direct/range {v0 .. v5}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;-><init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;Ljava/lang/String;D)V

    move-object v1, v6

    .line 207
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 208
    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    .line 208
    invoke-virtual {v0, v1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->addChild(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;)V

    goto :goto_55
.end method

.method private displayTree(Ljava/lang/String;Ljava/lang/String;D)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    .prologue
    .line 218
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 219
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v4, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->weight:D

    div-double/2addr v4, p3

    const-wide/high16 v6, 0x4059000000000000L  # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->domain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    if-eqz v0, :cond_d2

    .line 221
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 222
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ">> domain node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->domain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    iget-object v2, v2, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->providerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    :cond_d2
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->children:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 225
    :goto_da
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e1

    return-void

    .line 224
    :cond_e1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    .line 225
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->childWeight:D

    invoke-direct {v0, p1, v2, v4, v5}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->displayTree(Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_da
.end method

.method private getDomainFromTreeRoot()Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;
    .registers 2

    .prologue
    .line 144
    :goto_0
    if-nez p0, :cond_6

    .line 150
    const/4 v0, 0x0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    :cond_5
    return-object v0

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->domain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    .line 146
    if-nez v0, :cond_5

    .line 144
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->getRandomChild()Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    move-result-object p0

    goto :goto_0
.end method

.method private getRandomChild()Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;
    .registers 11

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 129
    iget-wide v4, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->childWeight:D

    cmpg-double v1, v4, v2

    if-gtz v1, :cond_c

    .line 130
    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    .line 140
    :goto_b
    return-object v0

    .line 132
    :cond_c
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->childWeight:D

    mul-double/2addr v4, v6

    .line 134
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->children:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 137
    :cond_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_24

    .line 140
    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    goto :goto_b

    .line 134
    :cond_24
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    .line 135
    iget-wide v8, v1, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->weight:D

    add-double/2addr v2, v8

    .line 136
    cmpl-double v7, v2, v4

    if-ltz v7, :cond_1b

    move-object v0, v1

    .line 137
    goto :goto_b
.end method

.method private removeNodes(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->childWeight:D

    .line 178
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->children:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 184
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 187
    iput-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->children:Ljava/util/List;

    return-void

    .line 178
    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    .line 179
    iget-object v1, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 180
    iget-wide v4, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->childWeight:D

    iget-wide v6, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->weight:D

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->childWeight:D

    .line 181
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-direct {v0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->removeNodes(Ljava/lang/String;)V

    goto :goto_11

    .line 184
    :cond_36
    const/4 v1, 0x0

    check-cast v1, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    iput-object v1, v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->parent:Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    goto :goto_11
.end method

.method private search(Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;
    .registers 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 163
    :goto_8
    return-object p0

    .line 157
    :cond_9
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->children:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 160
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 163
    const/4 v0, 0x0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    move-object p0, v0

    goto :goto_8

    .line 157
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    .line 158
    invoke-direct {v0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->search(Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    move-result-object p0

    .line 159
    if-eqz p0, :cond_11

    goto :goto_8
.end method

.method private searchAll(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 168
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_b
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->children:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 171
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 170
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    .line 171
    invoke-direct {v0, p1, p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->searchAll(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_13
.end method


# virtual methods
.method public addChild(Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->domain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    if-nez v0, :cond_11

    .line 121
    iget-wide v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->childWeight:D

    iget-wide v2, p1, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->weight:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->childWeight:D

    .line 122
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void

    .line 125
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " cannot be used as parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public displayTree(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 230
    const-string v0, ""

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->displayTree(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public getWeight()D
    .registers 3

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->weight:D

    return-wide v0
.end method

.method public setDomain(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;->domain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    return-void
.end method
