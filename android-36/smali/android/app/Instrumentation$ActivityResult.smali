.class public final Landroid/app/Instrumentation$ActivityResult;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityResult"
.end annotation


# instance fields
.field private final greylist-max-o mResultCode:I

.field private final greylist-max-o mResultData:Landroid/content/Intent;


# direct methods
.method public constructor whitelist <init>(ILandroid/content/Intent;)V
    .registers 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/content/Intent;

    .line 1884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1885
    iput p1, p0, Landroid/app/Instrumentation$ActivityResult;->mResultCode:I

    .line 1886
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityResult;->mResultData:Landroid/content/Intent;

    .line 1887
    return-void
.end method


# virtual methods
.method public whitelist getResultCode()I
    .registers 2

    .line 1893
    iget v0, p0, Landroid/app/Instrumentation$ActivityResult;->mResultCode:I

    return v0
.end method

.method public whitelist getResultData()Landroid/content/Intent;
    .registers 2

    .line 1900
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityResult;->mResultData:Landroid/content/Intent;

    return-object v0
.end method
