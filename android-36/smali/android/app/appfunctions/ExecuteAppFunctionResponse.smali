.class public final Landroid/app/appfunctions/ExecuteAppFunctionResponse;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/ExecuteAppFunctionResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PROPERTY_RETURN_VALUE:Ljava/lang/String; = "androidAppfunctionsReturnValue"


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionResponse$1;

    invoke-direct {v0}, Landroid/app/appfunctions/ExecuteAppFunctionResponse$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/appsearch/GenericDocument;)V
    .registers 3
    .param p1, "resultDocument"    # Landroid/app/appsearch/GenericDocument;

    .line 95
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Landroid/app/appfunctions/ExecuteAppFunctionResponse;-><init>(Landroid/app/appsearch/GenericDocument;Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/appsearch/GenericDocument;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "resultDocument"    # Landroid/app/appsearch/GenericDocument;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/GenericDocument;

    invoke-direct {v0, v1}, Landroid/app/appfunctions/GenericDocumentWrapper;-><init>(Landroid/app/appsearch/GenericDocument;)V

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

    .line 105
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mExtras:Landroid/os/Bundle;

    .line 106
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getResponseDataSize()I
    .registers 3

    .line 144
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0}, Landroid/app/appfunctions/GenericDocumentWrapper;->getDataSize()I

    move-result v0

    iget-object v1, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getResultDocument()Landroid/app/appsearch/GenericDocument;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0}, Landroid/app/appfunctions/GenericDocumentWrapper;->getValue()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 154
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/app/appfunctions/GenericDocumentWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 156
    return-void
.end method
