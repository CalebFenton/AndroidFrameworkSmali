.class public Lcom/android/server/NativeDaemonConnector$SensitiveArg;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensitiveArg"
.end annotation


# instance fields
.field private final mArg:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 271
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;->mArg:Ljava/lang/Object;

    #@5
    .line 270
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;->mArg:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
