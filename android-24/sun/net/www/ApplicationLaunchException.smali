.class public Lsun/net/www/ApplicationLaunchException;
.super Ljava/lang/Exception;
.source "ApplicationLaunchException.java"


# static fields
.field private static final serialVersionUID:J = -0x425e17e869d61d73L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 38
    return-void
.end method
