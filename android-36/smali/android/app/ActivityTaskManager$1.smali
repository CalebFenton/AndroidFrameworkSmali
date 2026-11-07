.class Landroid/app/ActivityTaskManager$1;
.super Landroid/util/Singleton;
.source "ActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/ActivityTaskManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/ActivityTaskManager;
    .registers 3

    .line 136
    new-instance v0, Landroid/app/ActivityTaskManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityTaskManager;-><init>(Landroid/app/ActivityTaskManager-IA;)V

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .registers 2

    .line 133
    invoke-virtual {p0}, Landroid/app/ActivityTaskManager$1;->create()Landroid/app/ActivityTaskManager;

    move-result-object v0

    return-object v0
.end method
