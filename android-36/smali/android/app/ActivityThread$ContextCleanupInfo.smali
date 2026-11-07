.class final Landroid/app/ActivityThread$ContextCleanupInfo;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContextCleanupInfo"
.end annotation


# instance fields
.field greylist-max-o context:Landroid/app/ContextImpl;

.field greylist-max-o what:Ljava/lang/String;

.field greylist-max-o who:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
