.class public final Landroid/app/appsearch/MigrationFailureCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CONTENT_DESCRIPTION:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static blacklist writeToParcel(Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->getNamespace()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p1, v1, v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p0}, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->getDocumentId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p1, v0, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-virtual {p0}, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->getSchemaType()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {p1, v0, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mErrorMessage:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p1, v0, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    iget p0, p0, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->mResultCode:I

    .line 38
    .line 39
    invoke-static {p1, v0, p0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;
    .registers 10

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move v7, v1

    .line 3
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_4a

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 5
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_44

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_38

    const/4 v2, 0x4

    if-eq v1, v2, :cond_32

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2c

    .line 6
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 7
    :cond_2c
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v7, v0

    goto :goto_b

    .line 8
    :cond_32
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_b

    .line 9
    :cond_38
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_b

    .line 10
    :cond_3e
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_b

    .line 11
    :cond_44
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_b

    .line 12
    :cond_4a
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 13
    new-instance v2, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;

    invoke-direct/range {v2 .. v7}, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/appsearch/MigrationFailureCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/appsearch/MigrationFailureCreator;->newArray(I)[Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;

    move-result-object p0

    return-object p0
.end method
