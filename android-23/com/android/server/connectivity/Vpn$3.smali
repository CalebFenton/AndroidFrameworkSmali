.class Lcom/android/server/connectivity/Vpn$3;
.super Landroid/net/NetworkAgent;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn;->agentConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .locals 9
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/content/Context;
    .param p4, "$anonymous2"    # Ljava/lang/String;
    .param p5, "$anonymous3"    # Landroid/net/NetworkInfo;
    .param p6, "$anonymous4"    # Landroid/net/NetworkCapabilities;
    .param p7, "$anonymous5"    # Landroid/net/LinkProperties;
    .param p8, "$anonymous6"    # I
    .param p9, "$anonymous7"    # Landroid/net/NetworkMisc;

    #@0
    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p2

    #@4
    move-object v2, p3

    #@5
    move-object v3, p4

    #@6
    move-object v4, p5

    #@7
    move-object v5, p6

    #@8
    move-object/from16 v6, p7

    #@a
    move/from16 v7, p8

    #@c
    move-object/from16 v8, p9

    #@e
    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    #@11
    .line 430
    return-void
.end method


# virtual methods
.method public unwanted()V
    .locals 0

    #@0
    .prologue
    .line 432
    return-void
.end method
