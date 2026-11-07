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
.field private final greylist-max-o mAlignment:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Layout$Alignment;->valueOf(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/AlignmentSpan$Standard;->mAlignment:Landroid/text/Layout$Alignment;

    .line 72
    return-void
.end method

.method public constructor whitelist <init>(Landroid/text/Layout$Alignment;)V
    .registers 2
    .param p1, "align"    # Landroid/text/Layout$Alignment;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/text/style/AlignmentSpan$Standard;->mAlignment:Landroid/text/Layout$Alignment;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAlignment()Landroid/text/Layout$Alignment;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/text/style/AlignmentSpan$Standard;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 76
    invoke-virtual {p0}, Landroid/text/style/AlignmentSpan$Standard;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlignmentSpan.Standard{alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/AlignmentSpan$Standard;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 92
    invoke-virtual {p0, p1, p2}, Landroid/text/style/AlignmentSpan$Standard;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 93
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget-object v0, p0, Landroid/text/style/AlignmentSpan$Standard;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return-void
.end method
