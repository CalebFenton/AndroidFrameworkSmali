.class Ldalvik/system/DexFile$DFEnum;
.super Ljava/lang/Object;
.source "DexFile.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/DexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DFEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mIndex:I

.field private greylist mNameList:[Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ldalvik/system/DexFile;)V
    .registers 3
    .param p1, "df"    # Ldalvik/system/DexFile;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput v0, p0, Ldalvik/system/DexFile$DFEnum;->mIndex:I

    .line 366
    invoke-static {p1}, Ldalvik/system/DexFile;->-$$Nest$fgetmCookie(Ldalvik/system/DexFile;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/DexFile;->-$$Nest$smgetClassNameList(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexFile$DFEnum;->mNameList:[Ljava/lang/String;

    .line 367
    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 3

    .line 370
    iget v0, p0, Ldalvik/system/DexFile$DFEnum;->mIndex:I

    iget-object v1, p0, Ldalvik/system/DexFile$DFEnum;->mNameList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public bridge synthetic whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 359
    invoke-virtual {p0}, Ldalvik/system/DexFile$DFEnum;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()Ljava/lang/String;
    .registers 4

    .line 374
    iget-object v0, p0, Ldalvik/system/DexFile$DFEnum;->mNameList:[Ljava/lang/String;

    iget v1, p0, Ldalvik/system/DexFile$DFEnum;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldalvik/system/DexFile$DFEnum;->mIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method
