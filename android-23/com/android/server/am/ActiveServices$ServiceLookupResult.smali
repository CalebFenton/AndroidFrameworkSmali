.class final Lcom/android/server/am/ActiveServices$ServiceLookupResult;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceLookupResult"
.end annotation


# instance fields
.field final permission:Ljava/lang/String;

.field final record:Lcom/android/server/am/ServiceRecord;

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;
    .param p2, "_record"    # Lcom/android/server/am/ServiceRecord;
    .param p3, "_permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->this$0:Lcom/android/server/am/ActiveServices;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1006
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    #@7
    .line 1007
    iput-object p3, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    #@9
    .line 1005
    return-void
.end method
