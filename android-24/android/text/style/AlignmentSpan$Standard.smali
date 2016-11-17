.class public Landroid/text/style/AlignmentSpan$Standard;
.super Ljava/lang/Object;
.source "AlignmentSpan.java"

# interfaces
.implements Landroid/text/style/AlignmentSpan;
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/AlignmentSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private final mAlignment:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Landroid/text/Layout$Alignment;->valueOf(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/text/style/AlignmentSpan$Standard;->mAlignment:Landroid/text/Layout$Alignment;

    #@d
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/text/Layout$Alignment;)V
    .locals 0
    .param p1, "align"    # Landroid/text/Layout$Alignment;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Landroid/text/style/AlignmentSpan$Standard;->mAlignment:Landroid/text/Layout$Alignment;

    #@5
    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 46
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Landroid/text/style/AlignmentSpan$Standard;->mAlignment:Landroid/text/Layout$Alignment;

    #@2
    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/text/style/AlignmentSpan$Standard;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 42
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/text/style/AlignmentSpan$Standard;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 49
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Landroid/text/style/AlignmentSpan$Standard;->mAlignment:Landroid/text/Layout$Alignment;

    #@2
    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->name()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9
    .line 54
    return-void
.end method
