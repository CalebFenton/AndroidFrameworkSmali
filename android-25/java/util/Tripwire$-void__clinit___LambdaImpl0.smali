.class final synthetic Ljava/util/Tripwire$-void__clinit___LambdaImpl0;
.super Ljava/lang/Object;
.source "Tripwire.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Tripwire;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__clinit___LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    invoke-static {}, Ljava/util/Tripwire;->-java_util_Tripwire_lambda$1()Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
