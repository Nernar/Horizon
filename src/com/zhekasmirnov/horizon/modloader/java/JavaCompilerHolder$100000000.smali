.class Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$100000000;
.super Lcom/zhekasmirnov/horizon/runtime/task/Task;
.source "JavaCompilerHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;


# direct methods
.method constructor <init>(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)V
    .registers 2

    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/runtime/task/Task;-><init>()V

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$100000000;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    return-void
.end method

.method static access$0(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$100000000;)Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$100000000;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    const-string v0, "initializing javac"

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 181
    const-string v0, "initialize_javac"

    return-object v0
.end method

.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$100000000;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->access$L1000008(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 186
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$100000000;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    invoke-static {v0, v1}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->access$S1000008(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;Z)V

    .line 187
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$100000000;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->access$L1000007(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 188
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$100000000;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->access$1000017(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)V

    .line 189
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$100000000;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    invoke-static {v0, v1}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->access$S1000007(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;Z)V

    .line 191
    :cond_20
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$100000000;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->access$S1000008(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;Z)V

    :cond_26
    return-void
.end method
