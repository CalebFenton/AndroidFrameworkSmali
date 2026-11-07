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
.field private final greylist-max-o mPrototype:Landroid/print/PrintDocumentInfo;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 315
    new-instance v0, Landroid/print/PrintDocumentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo-IA;)V

    iput-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    .line 316
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    invoke-static {v0, p1}, Landroid/print/PrintDocumentInfo;->-$$Nest$fputmName(Landroid/print/PrintDocumentInfo;Ljava/lang/String;)V

    .line 317
    return-void

    .line 313
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/print/PrintDocumentInfo;
    .registers 4

    .line 365
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    invoke-static {v0}, Landroid/print/PrintDocumentInfo;->-$$Nest$fgetmPageCount(Landroid/print/PrintDocumentInfo;)I

    move-result v0

    if-nez v0, :cond_e

    .line 366
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/print/PrintDocumentInfo;->-$$Nest$fputmPageCount(Landroid/print/PrintDocumentInfo;I)V

    .line 368
    :cond_e
    new-instance v0, Landroid/print/PrintDocumentInfo;

    iget-object v1, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo-IA;)V

    return-object v0
.end method

.method public whitelist setContentType(I)Landroid/print/PrintDocumentInfo$Builder;
    .registers 3
    .param p1, "type"    # I

    .line 352
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    invoke-static {v0, p1}, Landroid/print/PrintDocumentInfo;->-$$Nest$fputmContentType(Landroid/print/PrintDocumentInfo;I)V

    .line 353
    return-object p0
.end method

.method public whitelist setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;
    .registers 4
    .param p1, "pageCount"    # I

    .line 330
    if-gez p1, :cond_f

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    goto :goto_f

    .line 331
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pageCount must be greater than or equal to zero or DocumentInfo#PAGE_COUNT_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    invoke-static {v0, p1}, Landroid/print/PrintDocumentInfo;->-$$Nest$fputmPageCount(Landroid/print/PrintDocumentInfo;I)V

    .line 336
    return-object p0
.end method
