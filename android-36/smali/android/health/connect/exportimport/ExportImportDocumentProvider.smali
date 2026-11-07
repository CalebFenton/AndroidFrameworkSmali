.class public final Landroid/health/connect/exportimport/ExportImportDocumentProvider;
.super Ljava/lang/Object;
.source "ExportImportDocumentProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/exportimport/ExportImportDocumentProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAuthority:Ljava/lang/String;

.field private final blacklist mIconResource:I

.field private final blacklist mRootUri:Landroid/net/Uri;

.field private final blacklist mSummary:Ljava/lang/String;

.field private final blacklist mTitle:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/health/connect/exportimport/ExportImportDocumentProvider$1;

    invoke-direct {v0}, Landroid/health/connect/exportimport/ExportImportDocumentProvider$1;-><init>()V

    sput-object v0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mTitle:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mSummary:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mIconResource:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mRootUri:Landroid/net/Uri;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mAuthority:Ljava/lang/String;

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/exportimport/ExportImportDocumentProvider-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/exportimport/ExportImportDocumentProvider;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "iconResource"    # I
    .param p4, "rootUri"    # Landroid/net/Uri;
    .param p5, "authority"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mTitle:Ljava/lang/String;

    .line 67
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mSummary:Ljava/lang/String;

    .line 68
    iput p3, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mIconResource:I

    .line 69
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mRootUri:Landroid/net/Uri;

    .line 70
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mAuthority:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAuthority()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIconResource()I
    .registers 2

    .line 92
    iget v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mIconResource:I

    return v0
.end method

.method public blacklist getRootUri()Landroid/net/Uri;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mRootUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getSummary()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mIconResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mRootUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Landroid/health/connect/exportimport/ExportImportDocumentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return-void
.end method
