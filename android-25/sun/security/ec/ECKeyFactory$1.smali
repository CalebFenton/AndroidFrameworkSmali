.class final Lsun/security/ec/ECKeyFactory$1;
.super Ljava/security/Provider;
.source "ECKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ec/ECKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;
    .param p2, "$anonymous1"    # D
    .param p4, "$anonymous2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@3
    return-void
.end method
