.class public Lcom/zhekasmirnov/horizon/HorizonApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "HorizonApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;,
        Lcom/zhekasmirnov/horizon/HorizonApplication$ApplicationLock;
    }
.end annotation


# static fields
.field private static final applicationLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/zhekasmirnov/horizon/HorizonApplication$ApplicationLock;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/zhekasmirnov/horizon/HorizonApplication;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activitiesOnTop:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final activityStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFirebaseAnalytics:Ljava/lang/Object;

.field private mFirebaseApp:Ljava/lang/Object;

.field private final runningActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private systemExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zhekasmirnov/horizon/HorizonApplication;->applicationLocks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activitiesOnTop:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activityStack:Ljava/util/List;

    move-object v0, v1

    check-cast v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->mFirebaseAnalytics:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->mFirebaseApp:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->runningActivities:Ljava/util/List;

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v1, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->systemExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/zhekasmirnov/horizon/HorizonApplication;->instance:Ljava/lang/ref/WeakReference;

    .line 47
    new-instance v0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;

    invoke-direct {v0, p0}, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;-><init>(Lcom/zhekasmirnov/horizon/HorizonApplication;)V

    invoke-virtual {p0, v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic access$L1000002(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activitiesOnTop:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$L1000003(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activityStack:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$L1000006(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->runningActivities:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$S1000002(Lcom/zhekasmirnov/horizon/HorizonApplication;Ljava/util/HashSet;)V
    .registers 2

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activitiesOnTop:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$S1000003(Lcom/zhekasmirnov/horizon/HorizonApplication;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activityStack:Ljava/util/List;

    return-void
.end method

.method static synthetic access$S1000006(Lcom/zhekasmirnov/horizon/HorizonApplication;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->runningActivities:Ljava/util/List;

    return-void
.end method

.method public static getActivitiesOnTop()Ljava/util/HashSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getInstance()Lcom/zhekasmirnov/horizon/HorizonApplication;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activitiesOnTop:Ljava/util/HashSet;

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_8
.end method

.method public static getActivityStack()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getInstance()Lcom/zhekasmirnov/horizon/HorizonApplication;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/zhekasmirnov/horizon/HorizonApplication;->activityStack:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_d
.end method

.method public static getAppPackageName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 218
    invoke-static {}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getInstance()Lcom/zhekasmirnov/horizon/HorizonApplication;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "com.zheka.horizon"

    goto :goto_c
.end method

.method public static getExternalDataDir()Ljava/io/File;
    .registers 5

    .prologue
    .line 223
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "android/data"

    invoke-static {}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/zhekasmirnov/horizon/HorizonApplication;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/zhekasmirnov/horizon/HorizonApplication;->instance:Ljava/lang/ref/WeakReference;

    .line 39
    if-eqz v0, :cond_b

    .line 40
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/HorizonApplication;

    .line 42
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    check-cast v0, Lcom/zhekasmirnov/horizon/HorizonApplication;

    goto :goto_a
.end method

.method public static getLock(Ljava/lang/String;)Lcom/zhekasmirnov/horizon/HorizonApplication$ApplicationLock;
    .registers 4

    .prologue
    .line 258
    sget-object v1, Lcom/zhekasmirnov/horizon/HorizonApplication;->applicationLocks:Ljava/util/HashMap;

    monitor-enter v1

    .line 260
    :try_start_3
    sget-object v0, Lcom/zhekasmirnov/horizon/HorizonApplication;->applicationLocks:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/HorizonApplication$ApplicationLock;

    .line 261
    if-nez v0, :cond_17

    .line 262
    new-instance v0, Lcom/zhekasmirnov/horizon/HorizonApplication$ApplicationLock;

    invoke-direct {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication$ApplicationLock;-><init>()V

    .line 263
    sget-object v2, Lcom/zhekasmirnov/horizon/HorizonApplication;->applicationLocks:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v1

    .line 266
    return-object v0

    .line 263
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3

    .prologue
    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 115
    if-nez v0, :cond_7

    .line 118
    :goto_6
    return-object p1

    :cond_7
    invoke-direct {p0, v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_6
.end method

.method public static getTopActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 172
    invoke-static {}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getInstance()Lcom/zhekasmirnov/horizon/HorizonApplication;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activityStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_12

    .line 174
    :cond_e
    const/4 v0, 0x0

    check-cast v0, Landroid/app/Activity;

    .line 176
    :goto_11
    return-object v0

    :cond_12
    iget-object v0, v0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activityStack:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_11
.end method

.method public static getTopRunningActivity()Landroid/app/Activity;
    .registers 4

    .prologue
    .line 158
    const/4 v0, 0x0

    move v1, v0

    .line 159
    :goto_2
    const/16 v0, 0xa

    if-lt v1, v0, :cond_a

    .line 168
    const/4 v0, 0x0

    check-cast v0, Landroid/app/Activity;

    :cond_9
    return-object v0

    .line 160
    :cond_a
    invoke-static {}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getInstance()Lcom/zhekasmirnov/horizon/HorizonApplication;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getTopRunningActivity0()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_9

    .line 165
    :cond_16
    const/16 v0, 0x64

    int-to-long v2, v0

    :try_start_19
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_20

    .line 159
    :goto_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 165
    :catch_20
    move-exception v0

    goto :goto_1c
.end method

.method public static initializeFirebase(Landroid/content/Context;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method private initializeFirebase0(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public static moveToBackgroundIfNotOnTop(Landroid/app/Activity;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 190
    invoke-static {}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getActivitiesOnTop()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 191
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    .line 196
    invoke-virtual {p0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move v0, v1

    .line 197
    :goto_13
    return v0

    .line 192
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v0, v3, :cond_9

    .line 193
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static restart()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 208
    invoke-static {}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_32

    .line 210
    new-instance v2, Landroid/content/Intent;

    :try_start_9
    const-string v0, "com.zhekasmirnov.horizon.activity.main.StartupWrapperActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_e} :catch_3a

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    const v0, 0x14008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 v6, 0xc8

    int-to-long v6, v6

    add-long/2addr v4, v6

    const/16 v6, 0x100

    invoke-static {v1, v6, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 214
    :cond_32
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/Runtime;->exit(I)V

    return-void

    .line 210
    :catch_3a
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static sendFirebaseEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method private sendFirebaseEvent0(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public static terminate()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getActivityStack()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 202
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 204
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    return-void

    .line 201
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 202
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_a
.end method


# virtual methods
.method public getRunningActivityClasses()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v2, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activityStack:Ljava/util/List;

    monitor-enter v2

    .line 141
    :try_start_8
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activityStack:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 142
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_26

    move-result v0

    if-nez v0, :cond_18

    monitor-exit v2

    .line 145
    return-object v1

    .line 141
    :cond_18
    :try_start_18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 142
    invoke-virtual {v0}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_26

    goto :goto_10

    :catchall_26
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getTopRunningActivity0()Landroid/app/Activity;
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activityStack:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 151
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 154
    const/4 v0, 0x0

    check-cast v0, Landroid/app/Activity;

    :goto_11
    return-object v0

    .line 149
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 150
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->runningActivities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_11
.end method

.method public isActivityRunning(Ljava/lang/Class;)Z
    .registers 6

    .prologue
    .line 128
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activityStack:Ljava/util/List;

    monitor-enter v1

    .line 129
    :try_start_3
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->activityStack:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 131
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    .line 134
    const/4 v0, 0x0

    monitor-exit v1

    :goto_13
    return v0

    .line 129
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->runningActivities:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 131
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_31

    goto :goto_13

    .line 134
    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onCreate()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->systemExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 123
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 124
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p2}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_2a

    .line 95
    invoke-virtual {p0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    new-instance v1, Landroid/content/Intent;

    :try_start_e
    const-string v2, "com.zhekasmirnov.horizon.activity.main.StartupWrapperActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_13} :catch_1f

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 97
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 109
    :cond_1e
    :goto_1e
    return-void

    .line 96
    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_2a
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 101
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 103
    :try_start_37
    invoke-static {}, Lcom/zhekasmirnov/horizon/runtime/logger/LogFileHandler;->getInstance()Lcom/zhekasmirnov/horizon/runtime/logger/LogFileHandler;

    move-result-object v1

    const-string v2, "crash.txt"

    invoke-virtual {v1, v2}, Lcom/zhekasmirnov/horizon/runtime/logger/LogFileHandler;->getNewLogFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zhekasmirnov/horizon/util/FileUtils;->writeFileText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_48} :catch_50

    .line 107
    :goto_48
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication;->systemExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 108
    if-eqz v0, :cond_1e

    .line 109
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 103
    :catch_50
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48
.end method
