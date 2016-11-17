.class public abstract Lcom/android/server/vr/VrManagerInternal;
.super Ljava/lang/Object;
.source "VrManagerInternal.java"


# static fields
.field public static final NO_ERROR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract hasVrPackage(Landroid/content/ComponentName;I)I
.end method

.method public abstract isCurrentVrListener(Ljava/lang/String;I)Z
.end method

.method public abstract setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V
.end method

.method public abstract setVrModeImmediate(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V
.end method
