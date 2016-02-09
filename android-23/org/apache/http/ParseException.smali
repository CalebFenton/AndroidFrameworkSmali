.class public Lorg/apache/http/ParseException;
.super Ljava/lang/RuntimeException;
.source "ParseException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6527170a84993b1aL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #@3
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 66
    return-void
.end method
