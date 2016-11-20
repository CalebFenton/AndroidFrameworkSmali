.class public Landroid/text/style/LeadingMarginSpan$Standard;
.super Ljava/lang/Object;
.source "LeadingMarginSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/LeadingMarginSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private final mFirst:I

.field private final mRest:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "every"    # I

    #@0
    .prologue
    .line 119
    invoke-direct {p0, p1, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    #@3
    .line 118
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "first"    # I
    .param p2, "rest"    # I

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 110
    iput p1, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    #@5
    .line 111
    iput p2, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    #@7
    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    #@9
    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    #@f
    .line 122
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 137
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    .line 158
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    #@0
    .prologue
    .line 151
    if-eqz p1, :cond_0

    #@2
    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    #@7
    goto :goto_0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/text/style/LeadingMarginSpan$Standard;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 133
    const/16 v0, 0xa

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, Landroid/text/style/LeadingMarginSpan$Standard;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 140
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 146
    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 147
    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 145
    return-void
.end method
