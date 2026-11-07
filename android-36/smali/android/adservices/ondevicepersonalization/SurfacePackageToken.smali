.class public Landroid/adservices/ondevicepersonalization/SurfacePackageToken;
.super Ljava/lang/Object;
.source "SurfacePackageToken.java"


# instance fields
.field private final blacklist mTokenString:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "tokenString"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/SurfacePackageToken;->mTokenString:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public blacklist getTokenString()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/SurfacePackageToken;->mTokenString:Ljava/lang/String;

    return-object v0
.end method
