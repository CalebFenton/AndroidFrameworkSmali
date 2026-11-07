.class final Landroid/app/ActivityThread$DumpHeapData;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DumpHeapData"
.end annotation


# instance fields
.field public blacklist dumpBitmaps:Ljava/lang/String;

.field greylist-max-o fd:Landroid/os/ParcelFileDescriptor;

.field blacklist finishCallback:Landroid/os/RemoteCallback;

.field public greylist-max-o mallocInfo:Z

.field public greylist-max-o managed:Z

.field greylist-max-o path:Ljava/lang/String;

.field public greylist-max-o runGc:Z


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
