.class public Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;
.super Ljava/lang/Exception;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser$SplitDependencyLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalDependencyException"
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 8849
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8850
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/content/pm/PackageParser-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;)V

    return-void
.end method
