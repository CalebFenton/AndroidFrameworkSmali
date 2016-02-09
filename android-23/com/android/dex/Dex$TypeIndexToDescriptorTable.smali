.class final Lcom/android/dex/Dex$TypeIndexToDescriptorTable;
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
    name = "TypeIndexToDescriptorTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
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
    .line 911
    iput-object p1, p0, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;->this$0:Lcom/android/dex/Dex;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorTable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dex/Dex;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/android/dex/Dex;)V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 913
    invoke-virtual {p0, p1}, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;->get(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;->this$0:Lcom/android/dex/Dex;

    #@2
    invoke-static {v0}, Lcom/android/dex/Dex;->-get0(Lcom/android/dex/Dex;)Lcom/android/dex/Dex$StringTable;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;->this$0:Lcom/android/dex/Dex;

    #@8
    invoke-virtual {v1, p1}, Lcom/android/dex/Dex;->descriptorIndexFromTypeIndex(I)I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$StringTable;->get(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;->this$0:Lcom/android/dex/Dex;

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
