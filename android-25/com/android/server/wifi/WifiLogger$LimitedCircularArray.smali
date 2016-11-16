.class Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
.super Ljava/lang/Object;
.source "WifiLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LimitedCircularArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mMax:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiLogger;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiLogger;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiLogger;
    .param p2, "max"    # I

    #@0
    .prologue
    .line 341
    .local p0, "this":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<TE;>;"
    iput-object p1, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->this$0:Lcom/android/server/wifi/WifiLogger;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 342
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mArrayList:Ljava/util/ArrayList;

    #@c
    .line 343
    iput p2, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mMax:I

    #@e
    .line 341
    return-void
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 347
    .local p0, "this":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mArrayList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mMax:I

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 348
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mArrayList:Ljava/util/ArrayList;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@10
    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mArrayList:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 346
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 357
    .local p0, "this":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mArrayList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final size()I
    .locals 1

    #@0
    .prologue
    .line 353
    .local p0, "this":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mArrayList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
