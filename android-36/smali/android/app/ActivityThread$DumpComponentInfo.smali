.class final Landroid/app/ActivityThread$DumpComponentInfo;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DumpComponentInfo"
.end annotation


# instance fields
.field greylist-max-o args:[Ljava/lang/String;

.field greylist-max-o fd:Landroid/os/ParcelFileDescriptor;

.field greylist-max-o prefix:Ljava/lang/String;

.field greylist-max-o token:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
