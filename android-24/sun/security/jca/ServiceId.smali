.class public final Lsun/security/jca/ServiceId;
.super Ljava/lang/Object;
.source "ServiceId.java"


# instance fields
.field public final algorithm:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lsun/security/jca/ServiceId;->type:Ljava/lang/String;

    #@5
    .line 42
    iput-object p2, p0, Lsun/security/jca/ServiceId;->algorithm:Ljava/lang/String;

    #@7
    .line 40
    return-void
.end method
