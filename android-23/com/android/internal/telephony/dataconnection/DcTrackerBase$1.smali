.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;
.super Ljava/lang/Object;
.source "DcTrackerBase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/dataconnection/ApnContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@0
    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I
    .locals 2
    .param p1, "c1"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "c2"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@0
    .prologue
    .line 270
    iget v0, p2, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    #@2
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "c1"    # Ljava/lang/Object;
    .param p2, "c2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 269
    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@2
    .end local p1    # "c1":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@4
    .end local p2    # "c2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->compare(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
