.class interface Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$Component;
.super Ljava/lang/Object;
.source "JavaCompilerHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20a
    name = "Component"
.end annotation


# virtual methods
.method public abstract getBootFiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract install()Z
.end method

.method public abstract isInstalled()Z
.end method
