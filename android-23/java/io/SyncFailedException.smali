.class public Ljava/io/SyncFailedException;
.super Ljava/io/IOException;
.source "SyncFailedException.java"


# static fields
.field private static final serialVersionUID:J = -0x20a8c0b3f32afac2L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 35
    return-void
.end method
