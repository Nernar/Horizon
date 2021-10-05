.class public Lcom/zhekasmirnov/horizon/launcher/pack/Pack$MenuActivityFactory;
.super Ljava/lang/Object;
.source "Pack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/pack/Pack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x29
    name = "MenuActivityFactory"
.end annotation


# instance fields
.field private pack:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$L1000022(Lcom/zhekasmirnov/horizon/launcher/pack/Pack$MenuActivityFactory;)Lcom/zhekasmirnov/horizon/launcher/pack/Pack;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$MenuActivityFactory;->pack:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    return-object v0
.end method

.method static synthetic access$S1000022(Lcom/zhekasmirnov/horizon/launcher/pack/Pack$MenuActivityFactory;Lcom/zhekasmirnov/horizon/launcher/pack/Pack;)V
    .registers 2

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$MenuActivityFactory;->pack:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    return-void
.end method


# virtual methods
.method public getIconGraphics()Ljava/lang/String;
    .registers 2

    .prologue
    .line 469
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIconGraphicsBitmaps()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getMenuTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 477
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPack()Lcom/zhekasmirnov/horizon/launcher/pack/Pack;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$MenuActivityFactory;->pack:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    return-object v0
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateLayout(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/RelativeLayout;",
            ")V"
        }
    .end annotation

    return-void
.end method
