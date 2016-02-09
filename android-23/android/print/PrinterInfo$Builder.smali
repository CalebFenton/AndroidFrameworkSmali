.class public final Landroid/print/PrinterInfo$Builder;
.super Ljava/lang/Object;
.source "PrinterInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrinterInfo;


# direct methods
.method public constructor <init>(Landroid/print/PrinterId;Ljava/lang/String;I)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "status"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 232
    if-nez p1, :cond_0

    #@6
    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "printerId cannot be null."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 235
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "name cannot be empty."

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 238
    :cond_1
    invoke-direct {p0, p3}, Landroid/print/PrinterInfo$Builder;->isValidStatus(I)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_2

    #@24
    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v1, "status is invalid."

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 241
    :cond_2
    new-instance v0, Landroid/print/PrinterInfo;

    #@2f
    invoke-direct {v0, v1, v1}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterInfo;Landroid/print/PrinterInfo;)V

    #@32
    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    #@34
    .line 242
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    #@36
    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->-set2(Landroid/print/PrinterInfo;Landroid/print/PrinterId;)Landroid/print/PrinterId;

    #@39
    .line 243
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    #@3b
    invoke-static {v0, p2}, Landroid/print/PrinterInfo;->-set3(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;

    #@3e
    .line 244
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    #@40
    invoke-static {v0, p3}, Landroid/print/PrinterInfo;->-set4(Landroid/print/PrinterInfo;I)I

    #@43
    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/print/PrinterInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/print/PrinterInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 253
    new-instance v0, Landroid/print/PrinterInfo;

    #@6
    invoke-direct {v0, v1, v1}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterInfo;Landroid/print/PrinterInfo;)V

    #@9
    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    #@b
    .line 254
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    #@d
    invoke-virtual {v0, p1}, Landroid/print/PrinterInfo;->copyFrom(Landroid/print/PrinterInfo;)V

    #@10
    .line 252
    return-void
.end method

.method private isValidStatus(I)Z
    .locals 2
    .param p1, "status"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 317
    if-eq p1, v0, :cond_0

    #@3
    .line 318
    const/4 v1, 0x2

    #@4
    if-ne p1, v1, :cond_1

    #@6
    .line 317
    :cond_0
    :goto_0
    return v0

    #@7
    .line 319
    :cond_1
    const/4 v1, 0x3

    #@8
    if-eq p1, v1, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/print/PrinterInfo;
    .locals 1

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    #@2
    return-object v0
.end method

.method public setCapabilities(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "capabilities"    # Landroid/print/PrinterCapabilitiesInfo;

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    #@2
    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->-set0(Landroid/print/PrinterInfo;Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrinterCapabilitiesInfo;

    #@5
    .line 304
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    #@2
    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->-set1(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;

    #@5
    .line 293
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    #@2
    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->-set3(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;

    #@5
    .line 281
    return-object p0
.end method

.method public setStatus(I)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    #@2
    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->-set4(Landroid/print/PrinterInfo;I)I

    #@5
    .line 269
    return-object p0
.end method
