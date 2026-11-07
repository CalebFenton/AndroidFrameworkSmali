.class Landroid/app/assist/AssistStructure$HtmlInfoNode$1;
.super Ljava/lang/Object;
.source "AssistStructure.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure$HtmlInfoNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/assist/AssistStructure$HtmlInfoNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/AssistStructure$HtmlInfoNode;
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 2459
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2460
    .local v0, "tag":Ljava/lang/String;
    new-instance v1, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;

    invoke-direct {v1, v0}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;-><init>(Ljava/lang/String;)V

    .line 2461
    .local v1, "builder":Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 2462
    .local v2, "names":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 2463
    .local v3, "values":[Ljava/lang/String;
    if-eqz v2, :cond_4c

    if-eqz v3, :cond_4c

    .line 2464
    array-length v4, v2

    array-length v5, v3

    if-eq v4, v5, :cond_3e

    .line 2465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtmlInfo attributes mismatch: names="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", values="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AssistStructure"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 2468
    :cond_3e
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    array-length v5, v2

    if-ge v4, v5, :cond_4c

    .line 2469
    aget-object v5, v2, v4

    aget-object v6, v3, v4

    invoke-virtual {v1, v5, v6}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    .line 2468
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 2473
    .end local v4    # "i":I
    :cond_4c
    :goto_4c
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->build()Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object v4

    return-object v4
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

    .line 2453
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/assist/AssistStructure$HtmlInfoNode;
    .registers 3
    .param p1, "size"    # I

    .line 2478
    new-array v0, p1, [Landroid/app/assist/AssistStructure$HtmlInfoNode;

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

    .line 2453
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;->newArray(I)[Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object p1

    return-object p1
.end method
