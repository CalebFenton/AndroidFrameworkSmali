.class final Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;
.super Ljava/util/AbstractList;
.source "Dex.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TypeIndexToDescriptorIndexTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dex/Dex;


# direct methods
.method private constructor <init>(Lcom/android/dex/Dex;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dex/Dex;

    #@0
    .prologue
    .line 901
    iput-object p1, p0, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;->this$0:Lcom/android/dex/Dex;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dex/Dex;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/android/dex/Dex;)V

    #@3
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;->this$0:Lcom/android/dex/Dex;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/dex/Dex;->descriptorIndexFromTypeIndex(I)I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 903
    invoke-virtual {p0, p1}, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;->get(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;->this$0:Lcom/android/dex/Dex;

    #@2
    invoke-static {v0}, Lcom/android/dex/Dex;->-get1(Lcom/android/dex/Dex;)Lcom/android/dex/TableOfContents;

    #@5
    move-result-object v0

    #@6
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@8
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@a
    return v0
.end method
