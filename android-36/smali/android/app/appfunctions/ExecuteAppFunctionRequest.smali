.class public final Landroid/app/appfunctions/ExecuteAppFunctionRequest;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/ExecuteAppFunctionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFunctionIdentifier:Ljava/lang/String;

.field private final blacklist mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

.field private final blacklist mTargetPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$1;

    invoke-direct {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/appfunctions/GenericDocumentWrapper;)V
    .registers 6
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "functionIdentifier"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "parameters"    # Landroid/app/appfunctions/GenericDocumentWrapper;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mTargetPackageName:Ljava/lang/String;

    .line 90
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mFunctionIdentifier:Ljava/lang/String;

    .line 91
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mExtras:Landroid/os/Bundle;

    .line 92
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appfunctions/GenericDocumentWrapper;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

    .line 93
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/appfunctions/GenericDocumentWrapper;Landroid/app/appfunctions/ExecuteAppFunctionRequest-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/appfunctions/GenericDocumentWrapper;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getFunctionIdentifier()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mFunctionIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParameters()Landroid/app/appsearch/GenericDocument;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0}, Landroid/app/appfunctions/GenericDocumentWrapper;->getValue()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequestDataSize()I
    .registers 3

    .line 145
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mFunctionIdentifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

    .line 146
    invoke-virtual {v1}, Landroid/app/appfunctions/GenericDocumentWrapper;->getDataSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    return v0
.end method

.method public whitelist getTargetPackageName()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 151
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mFunctionIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/app/appfunctions/GenericDocumentWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 155
    return-void
.end method
