.class public Lcom/android/ondevicepersonalization/internal/util/Parcelling$BuiltIn$ForInternedStringArray;
.super Ljava/lang/Object;
.source "Parcelling.java"

# interfaces
.implements Lcom/android/ondevicepersonalization/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ondevicepersonalization/internal/util/Parcelling$BuiltIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForInternedStringArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/ondevicepersonalization/internal/util/Parcelling<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 117
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ondevicepersonalization/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->parcel([Ljava/lang/String;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist parcel([Ljava/lang/String;Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "item"    # [Ljava/lang/String;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "parcelFlags"    # I

    .line 120
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/ondevicepersonalization/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)[Ljava/lang/String;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 128
    array-length v1, v0

    .line 129
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_8
    if-ge v2, v1, :cond_15

    .line 130
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/android/ondevicepersonalization/internal/util/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 133
    .end local v1    # "size":I
    .end local v2    # "index":I
    :cond_15
    return-object v0
.end method
