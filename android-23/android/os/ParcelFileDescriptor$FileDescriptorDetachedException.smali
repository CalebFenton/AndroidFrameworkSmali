.class public Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;
.super Ljava/io/IOException;
.source "ParcelFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDescriptorDetachedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xde7ac4edfdL


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 989
    const-string/jumbo v0, "Remote side is detached"

    #@3
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6
    .line 988
    return-void
.end method
