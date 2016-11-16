.class public final Ljavax/net/ssl/StandardConstants;
.super Ljava/lang/Object;
.source "StandardConstants.java"


# static fields
.field public static final SNI_HOST_NAME:I


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    .line 38
    const-string/jumbo v1, "No javax.net.ssl.StandardConstants instances for you!"

    #@8
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v0
.end method
