.class public Ljava/util/prefs/BackingStoreException;
.super Ljava/lang/Exception;
.source "BackingStoreException.java"


# static fields
.field private static final serialVersionUID:J = 0xbee9c5c998835f5L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 48
    return-void
.end method
