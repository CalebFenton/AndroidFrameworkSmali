.class Lcom/android/server/content/ContentService$1;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/ContentService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/ContentService;

.field final synthetic val$pidCounts:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/ContentService;
    .param p2, "val$pidCounts"    # Landroid/util/SparseIntArray;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    #@2
    iput-object p2, p0, Lcom/android/server/content/ContentService$1;->val$pidCounts:Landroid/util/SparseIntArray;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 4
    .param p1, "lhs"    # Ljava/lang/Integer;
    .param p2, "rhs"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/server/content/ContentService$1;->val$pidCounts:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@5
    move-result v3

    #@6
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    #@9
    move-result v0

    #@a
    .line 116
    .local v0, "lc":I
    iget-object v2, p0, Lcom/android/server/content/ContentService$1;->val$pidCounts:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v3

    #@10
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    #@13
    move-result v1

    #@14
    .line 117
    .local v1, "rc":I
    if-ge v0, v1, :cond_0

    #@16
    .line 118
    const/4 v2, 0x1

    #@17
    return v2

    #@18
    .line 119
    :cond_0
    if-le v0, v1, :cond_1

    #@1a
    .line 120
    const/4 v2, -0x1

    #@1b
    return v2

    #@1c
    .line 122
    :cond_1
    const/4 v2, 0x0

    #@1d
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 114
    check-cast p1, Ljava/lang/Integer;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/ContentService$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
