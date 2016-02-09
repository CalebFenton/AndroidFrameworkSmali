.class public final Landroid/print/PrintDocumentInfo$Builder;
.super Ljava/lang/Object;
.source "PrintDocumentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintDocumentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrintDocumentInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "name cannot be empty"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 295
    :cond_0
    new-instance v0, Landroid/print/PrintDocumentInfo;

    #@15
    invoke-direct {v0, v1, v1, v1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo;)V

    #@18
    iput-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    #@1a
    .line 296
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    #@1c
    invoke-static {v0, p1}, Landroid/print/PrintDocumentInfo;->-set1(Landroid/print/PrintDocumentInfo;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    .line 291
    return-void
.end method


# virtual methods
.method public build()Landroid/print/PrintDocumentInfo;
    .locals 3

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    #@2
    invoke-static {v0}, Landroid/print/PrintDocumentInfo;->-get0(Landroid/print/PrintDocumentInfo;)I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 345
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    #@a
    const/4 v1, -0x1

    #@b
    invoke-static {v0, v1}, Landroid/print/PrintDocumentInfo;->-set2(Landroid/print/PrintDocumentInfo;I)I

    #@e
    .line 347
    :cond_0
    new-instance v0, Landroid/print/PrintDocumentInfo;

    #@10
    iget-object v1, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    #@12
    const/4 v2, 0x0

    #@13
    invoke-direct {v0, v1, v2}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo;)V

    #@16
    return-object v0
.end method

.method public setContentType(I)Landroid/print/PrintDocumentInfo$Builder;
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    #@2
    invoke-static {v0, p1}, Landroid/print/PrintDocumentInfo;->-set0(Landroid/print/PrintDocumentInfo;I)I

    #@5
    .line 332
    return-object p0
.end method

.method public setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;
    .locals 2
    .param p1, "pageCount"    # I

    #@0
    .prologue
    .line 309
    if-gez p1, :cond_0

    #@2
    const/4 v0, -0x1

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "pageCount must be greater than or equal to zero or DocumentInfo#PAGE_COUNT_UNKNOWN"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 314
    :cond_0
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    #@10
    invoke-static {v0, p1}, Landroid/print/PrintDocumentInfo;->-set2(Landroid/print/PrintDocumentInfo;I)I

    #@13
    .line 315
    return-object p0
.end method
