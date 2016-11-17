.class final Lcom/android/dex/Dex$MethodIdTable;
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
    name = "MethodIdTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/android/dex/MethodId;",
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
    .line 943
    iput-object p1, p0, Lcom/android/dex/Dex$MethodIdTable;->this$0:Lcom/android/dex/Dex;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$MethodIdTable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dex/Dex;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/dex/Dex$MethodIdTable;-><init>(Lcom/android/dex/Dex;)V

    #@3
    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/dex/MethodId;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/dex/Dex$MethodIdTable;->this$0:Lcom/android/dex/Dex;

    #@2
    invoke-static {v0}, Lcom/android/dex/Dex;->-get1(Lcom/android/dex/Dex;)Lcom/android/dex/TableOfContents;

    #@5
    move-result-object v0

    #@6
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@8
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@a
    invoke-static {p1, v0}, Lcom/android/dex/Dex;->-wrap0(II)V

    #@d
    .line 946
    iget-object v0, p0, Lcom/android/dex/Dex$MethodIdTable;->this$0:Lcom/android/dex/Dex;

    #@f
    iget-object v1, p0, Lcom/android/dex/Dex$MethodIdTable;->this$0:Lcom/android/dex/Dex;

    #@11
    invoke-static {v1}, Lcom/android/dex/Dex;->-get1(Lcom/android/dex/Dex;)Lcom/android/dex/TableOfContents;

    #@14
    move-result-object v1

    #@15
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@17
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    #@19
    mul-int/lit8 v2, p1, 0x8

    #@1b
    add-int/2addr v1, v2

    #@1c
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->readMethodId()Lcom/android/dex/MethodId;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 944
    invoke-virtual {p0, p1}, Lcom/android/dex/Dex$MethodIdTable;->get(I)Lcom/android/dex/MethodId;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/dex/Dex$MethodIdTable;->this$0:Lcom/android/dex/Dex;

    #@2
    invoke-static {v0}, Lcom/android/dex/Dex;->-get1(Lcom/android/dex/Dex;)Lcom/android/dex/TableOfContents;

    #@5
    move-result-object v0

    #@6
    iget-object v0, v0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@8
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@a
    return v0
.end method
