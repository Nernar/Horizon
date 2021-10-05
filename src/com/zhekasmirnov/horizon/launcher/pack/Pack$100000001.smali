.class Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000001;
.super Ljava/lang/Object;
.source "Pack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/pack/Pack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

.field private final val$launchingActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000001;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    iput-object p2, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000001;->val$launchingActivity:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000001;)Lcom/zhekasmirnov/horizon/launcher/pack/Pack;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000001;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000001;->val$launchingActivity:Landroid/app/Activity;

    const v1, 0x7f0e0061

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
