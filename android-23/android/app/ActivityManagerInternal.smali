.class public abstract Landroid/app/ActivityManagerInternal;
.super Ljava/lang/Object;
.source "ActivityManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManagerInternal$SleepToken;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;
.end method

.method public abstract getHomeActivityForUser(I)Landroid/content/ComponentName;
.end method

.method public abstract onWakefulnessChanged(I)V
.end method

.method public abstract startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I
.end method
