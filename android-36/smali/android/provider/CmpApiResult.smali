.class Landroid/provider/CmpApiResult;
.super Ljava/lang/Object;
.source "CmpApiResult.java"


# instance fields
.field private blacklist mApi:Ljava/lang/String;

.field private blacklist mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private blacklist mBundle:Landroid/os/Bundle;

.field private blacklist mCursor:Landroid/database/Cursor;

.field private blacklist mDimensions:Landroid/graphics/Point;

.field private blacklist mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Landroid/graphics/Point;)V
    .registers 4
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p3, "dimensions"    # Landroid/graphics/Point;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/provider/CmpApiResult;->mApi:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Landroid/provider/CmpApiResult;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 44
    iput-object p3, p0, Landroid/provider/CmpApiResult;->mDimensions:Landroid/graphics/Point;

    .line 45
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Landroid/database/Cursor;)V
    .registers 3
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/database/Cursor;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/provider/CmpApiResult;->mApi:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Landroid/provider/CmpApiResult;->mCursor:Landroid/database/Cursor;

    .line 39
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/provider/CmpApiResult;->mApi:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Landroid/provider/CmpApiResult;->mBundle:Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/provider/CmpApiResult;->mApi:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Landroid/provider/CmpApiResult;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 55
    return-void
.end method


# virtual methods
.method blacklist getApi()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/provider/CmpApiResult;->mApi:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/provider/CmpApiResult;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method blacklist getBundle()Landroid/os/Bundle;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/provider/CmpApiResult;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method blacklist getCursor()Landroid/database/Cursor;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/provider/CmpApiResult;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method blacklist getDimensions()Landroid/graphics/Point;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/provider/CmpApiResult;->mDimensions:Landroid/graphics/Point;

    return-object v0
.end method

.method blacklist getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/provider/CmpApiResult;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method
