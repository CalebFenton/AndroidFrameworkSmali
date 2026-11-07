.class public interface abstract Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;
.super Ljava/lang/Object;
.source "ParsingPackageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract blacklist getHiddenApiWhitelistedApps()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getInstallConstraintsAllowlist()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist hasFeature(Ljava/lang/String;)Z
.end method

.method public abstract blacklist startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method
