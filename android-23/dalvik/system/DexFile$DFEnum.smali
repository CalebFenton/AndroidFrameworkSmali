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
    accessFlags = 0x2
    name = "DFEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mNameList:[Ljava/lang/String;

.field final synthetic this$0:Ldalvik/system/DexFile;


# direct methods
.method constructor <init>(Ldalvik/system/DexFile;Ldalvik/system/DexFile;)V
    .locals 1
    .param p1, "this$0"    # Ldalvik/system/DexFile;
    .param p2, "df"    # Ldalvik/system/DexFile;

    #@0
    .prologue
    .line 256
    iput-object p1, p0, Ldalvik/system/DexFile$DFEnum;->this$0:Ldalvik/system/DexFile;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 257
    const/4 v0, 0x0

    #@6
    iput v0, p0, Ldalvik/system/DexFile$DFEnum;->mIndex:I

    #@8
    .line 258
    invoke-static {p1}, Ldalvik/system/DexFile;->-get0(Ldalvik/system/DexFile;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Ldalvik/system/DexFile;->-wrap0(Ljava/lang/Object;)[Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Ldalvik/system/DexFile$DFEnum;->mNameList:[Ljava/lang/String;

    #@12
    .line 256
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    #@0
    .prologue
    .line 262
    iget v0, p0, Ldalvik/system/DexFile$DFEnum;->mIndex:I

    #@2
    iget-object v1, p0, Ldalvik/system/DexFile$DFEnum;->mNameList:[Ljava/lang/String;

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 265
    invoke-virtual {p0}, Ldalvik/system/DexFile$DFEnum;->nextElement()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Ldalvik/system/DexFile$DFEnum;->mNameList:[Ljava/lang/String;

    #@2
    iget v1, p0, Ldalvik/system/DexFile$DFEnum;->mIndex:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Ldalvik/system/DexFile$DFEnum;->mIndex:I

    #@8
    aget-object v0, v0, v1

    #@a
    return-object v0
.end method
