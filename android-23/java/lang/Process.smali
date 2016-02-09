.class public abstract Ljava/lang/Process;
.super Ljava/lang/Object;
.source "Process.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract exitValue()I
.end method

.method public abstract getErrorStream()Ljava/io/InputStream;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract waitFor()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
