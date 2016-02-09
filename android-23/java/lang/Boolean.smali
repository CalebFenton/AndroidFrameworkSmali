.class public final Ljava/lang/Boolean;
.super Ljava/lang/Object;
.source "Boolean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/Boolean;

.field public static final TRUE:Ljava/lang/Boolean;

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x32df8d7f2a630512L


# instance fields
.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 42
    const-class v0, [Z

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    .line 41
    sput-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@8
    .line 50
    new-instance v0, Ljava/lang/Boolean;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    #@e
    sput-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@10
    .line 56
    new-instance v0, Ljava/lang/Boolean;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    #@16
    sput-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@18
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/Boolean;-><init>(Z)V

    #@7
    .line 68
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    iput-boolean p1, p0, Ljava/lang/Boolean;->value:Z

    #@5
    .line 79
    return-void
.end method

.method public static compare(ZZ)I
    .locals 1
    .param p0, "lhs"    # Z
    .param p1, "rhs"    # Z

    #@0
    .prologue
    .line 134
    if-ne p0, p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    if-eqz p0, :cond_1

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_0

    #@8
    :cond_1
    const/4 v0, -0x1

    #@9
    goto :goto_0
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 172
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 173
    :cond_0
    return v1

    #@a
    .line 175
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public static parseBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 189
    const-string/jumbo v0, "true"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static toString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Z

    #@0
    .prologue
    .line 200
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 213
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@b
    goto :goto_0
.end method

.method public static valueOf(Z)Ljava/lang/Boolean;
    .locals 1
    .param p0, "b"    # Z

    #@0
    .prologue
    .line 229
    if-eqz p0, :cond_0

    #@2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@7
    goto :goto_0
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    #@0
    .prologue
    .line 90
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    #@2
    return v0
.end method

.method public compareTo(Ljava/lang/Boolean;)I
    .locals 2
    .param p1, "that"    # Ljava/lang/Boolean;

    #@0
    .prologue
    .line 124
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    #@2
    iget-boolean v1, p1, Ljava/lang/Boolean;->value:Z

    #@4
    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 123
    check-cast p1, Ljava/lang/Boolean;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "RC_REF_COMPARISON_BAD_PRACTICE_BOOLEAN"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 106
    if-eq p1, p0, :cond_0

    #@4
    instance-of v2, p1, Ljava/lang/Boolean;

    #@6
    if-eqz v2, :cond_1

    #@8
    check-cast p1, Ljava/lang/Boolean;

    #@a
    .end local p1    # "o":Ljava/lang/Object;
    iget-boolean v2, p1, Ljava/lang/Boolean;->value:Z

    #@c
    iget-boolean v3, p0, Ljava/lang/Boolean;->value:Z

    #@e
    if-ne v2, v3, :cond_1

    #@10
    :cond_0
    :goto_0
    return v0

    #@11
    :cond_1
    move v0, v1

    #@12
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 145
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/16 v0, 0x4cf

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/16 v0, 0x4d5

    #@9
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    #@2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
