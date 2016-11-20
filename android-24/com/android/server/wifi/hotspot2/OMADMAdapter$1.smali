.class Lcom/android/server/wifi/hotspot2/OMADMAdapter$1;
.super Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
.source "OMADMAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/hotspot2/OMADMAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/OMADMAdapter;


# direct methods
.method varargs constructor <init>(Lcom/android/server/wifi/hotspot2/OMADMAdapter;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/hotspot2/OMADMAdapter;
    .param p2, "$anonymous0"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$1;->this$0:Lcom/android/server/wifi/hotspot2/OMADMAdapter;

    #@2
    invoke-direct {p0, p2}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;-><init>([Ljava/lang/Object;)V

    #@5
    return-void
.end method


# virtual methods
.method protected bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$1;->getValue()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$1;->this$0:Lcom/android/server/wifi/hotspot2/OMADMAdapter;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getMAC()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
