.class Landroid/service/autofill/SaveInfo$1;
.super Ljava/lang/Object;
.source "SaveInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/SaveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/SaveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/SaveInfo;
    .registers 14
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 910
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 911
    .local v0, "type":I
    const-class v1, Landroid/view/autofill/AutofillId;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/autofill/AutofillId;

    .line 912
    .local v1, "requiredIds":[Landroid/view/autofill/AutofillId;
    if-eqz v1, :cond_15

    .line 913
    new-instance v3, Landroid/service/autofill/SaveInfo$Builder;

    invoke-direct {v3, v0, v1}, Landroid/service/autofill/SaveInfo$Builder;-><init>(I[Landroid/view/autofill/AutofillId;)V

    goto :goto_1a

    .line 914
    :cond_15
    new-instance v3, Landroid/service/autofill/SaveInfo$Builder;

    invoke-direct {v3, v0}, Landroid/service/autofill/SaveInfo$Builder;-><init>(I)V

    :goto_1a
    nop

    .line 915
    .local v3, "builder":Landroid/service/autofill/SaveInfo$Builder;
    const-class v4, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/autofill/AutofillId;

    .line 916
    .local v4, "optionalIds":[Landroid/view/autofill/AutofillId;
    if-eqz v4, :cond_28

    .line 917
    invoke-virtual {v3, v4}, Landroid/service/autofill/SaveInfo$Builder;->setOptionalIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;

    .line 920
    :cond_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const-class v6, Landroid/content/IntentSender;

    invoke-virtual {p1, v2, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentSender;

    invoke-virtual {v3, v5, v6}, Landroid/service/autofill/SaveInfo$Builder;->setNegativeAction(ILandroid/content/IntentSender;)Landroid/service/autofill/SaveInfo$Builder;

    .line 921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/service/autofill/SaveInfo$Builder;->setPositiveAction(I)Landroid/service/autofill/SaveInfo$Builder;

    .line 922
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/service/autofill/SaveInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/service/autofill/SaveInfo$Builder;

    .line 923
    const-class v5, Landroid/service/autofill/CustomDescription;

    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/CustomDescription;

    .line 924
    .local v5, "customDescripton":Landroid/service/autofill/CustomDescription;
    if-eqz v5, :cond_52

    .line 925
    invoke-virtual {v3, v5}, Landroid/service/autofill/SaveInfo$Builder;->setCustomDescription(Landroid/service/autofill/CustomDescription;)Landroid/service/autofill/SaveInfo$Builder;

    .line 927
    :cond_52
    const-class v6, Landroid/service/autofill/InternalValidator;

    invoke-virtual {p1, v2, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/InternalValidator;

    .line 928
    .local v6, "validator":Landroid/service/autofill/InternalValidator;
    if-eqz v6, :cond_5f

    .line 929
    invoke-virtual {v3, v6}, Landroid/service/autofill/SaveInfo$Builder;->setValidator(Landroid/service/autofill/Validator;)Landroid/service/autofill/SaveInfo$Builder;

    .line 931
    :cond_5f
    const-class v7, Landroid/service/autofill/InternalSanitizer;

    .line 932
    invoke-virtual {p1, v2, v7}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/service/autofill/InternalSanitizer;

    .line 933
    .local v7, "sanitizers":[Landroid/service/autofill/InternalSanitizer;
    if-eqz v7, :cond_7d

    .line 934
    array-length v8, v7

    .line 935
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6b
    if-ge v9, v8, :cond_7d

    .line 936
    const-class v10, Landroid/view/autofill/AutofillId;

    .line 937
    invoke-virtual {p1, v2, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/view/autofill/AutofillId;

    .line 938
    .local v10, "autofillIds":[Landroid/view/autofill/AutofillId;
    aget-object v11, v7, v9

    invoke-virtual {v3, v11, v10}, Landroid/service/autofill/SaveInfo$Builder;->addSanitizer(Landroid/service/autofill/Sanitizer;[Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;

    .line 935
    .end local v10    # "autofillIds":[Landroid/view/autofill/AutofillId;
    add-int/lit8 v9, v9, 0x1

    goto :goto_6b

    .line 941
    .end local v8    # "size":I
    .end local v9    # "i":I
    :cond_7d
    const-class v8, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v2, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 942
    .local v2, "triggerId":Landroid/view/autofill/AutofillId;
    if-eqz v2, :cond_8a

    .line 943
    invoke-virtual {v3, v2}, Landroid/service/autofill/SaveInfo$Builder;->setTriggerId(Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;

    .line 945
    :cond_8a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/service/autofill/SaveInfo$Builder;->setFlags(I)Landroid/service/autofill/SaveInfo$Builder;

    .line 946
    invoke-virtual {v3}, Landroid/service/autofill/SaveInfo$Builder;->build()Landroid/service/autofill/SaveInfo;

    move-result-object v8

    return-object v8
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 903
    invoke-virtual {p0, p1}, Landroid/service/autofill/SaveInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/SaveInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/SaveInfo;
    .registers 3
    .param p1, "size"    # I

    .line 951
    new-array v0, p1, [Landroid/service/autofill/SaveInfo;

    return-object v0
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

    .line 903
    invoke-virtual {p0, p1}, Landroid/service/autofill/SaveInfo$1;->newArray(I)[Landroid/service/autofill/SaveInfo;

    move-result-object p1

    return-object p1
.end method
