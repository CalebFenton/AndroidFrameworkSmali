.class Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;
.super Ljava/lang/Thread;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindServiceThread"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/WapPushOverSms;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    .line 98
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;->context:Landroid/content/Context;

    #@7
    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/WapPushOverSms;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;->context:Landroid/content/Context;

    #@4
    invoke-static {v0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->-wrap0(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    #@7
    .line 102
    return-void
.end method
